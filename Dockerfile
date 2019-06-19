FROM swift:4.2.4 AS builder
ARG swiftlint=0.34.0
RUN git clone --branch ${swiftlint} https://github.com/realm/SwiftLint.git
WORKDIR SwiftLint
RUN CGO_ENABLED=0 swift build --configuration release --static-swift-stdlib
RUN cp `swift build --configuration release --static-swift-stdlib --show-bin-path`/swiftlint /usr/bin

FROM alpine:3.9
LABEL description="SwiftLint ${swiftlint}"
LABEL maintainer="Sascha Peilicke <sascha@peilicke.de"
COPY --from=builder /usr/bin/swiftlint /usr/bin
ENTRYPOINT ["swiftlint"]
