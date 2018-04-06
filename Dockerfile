FROM swift:4.0.3
LABEL maintainer="Sascha Peilicke <sascha@peilicke.de"
LABEL description="SwiftLint"

RUN git clone https://github.com/realm/SwiftLint.git && \
    cd SwiftLint && \
    swift build --configuration release --static-swift-stdlib && \
    mv `swift build --configuration release --static-swift-stdlib --show-bin-path`/swiftlint /usr/bin && \
    cd .. && \
    rm -rf SwiftLint
RUN swiftlint version

ENTRYPOINT ["swiftlint"]
