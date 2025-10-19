rd /s /q build
mkdir build
#SET CGO_ENABLED=0
SET GOARCH=amd64
SET GOOS=windows
go build -ldflags="-w -s"
move /y wireguard.exe build\wireguard-go.exe
SET GOARCH=386
go build -ldflags="-w -s"
move /y wireguard.exe build\wireguard-go-i386.exe
SET GOOS=linux
go build -ldflags="-w -s"
move /y wireguard build\wireguard-go-linux-i386
SET GOARCH=amd64
go build -ldflags="-w -s"
move /y wireguard build\wireguard-go-linux
SET GOARCH=arm
go build -ldflags="-w -s"
move /y wireguard build\wireguard-go-linux-arm
SET GOARCH=mips
go build -ldflags="-w -s"
move /y wireguard build\wireguard-go-linux-mips
SET GOARCH=arm64
go build -ldflags="-w -s"
move /y wireguard build\wireguard-go-linux-arm64
SET GOOS=darwin
go build -ldflags="-w -s"
move /y wireguard build\wireguard-go-darwin-arm64
SET GOARCH=amd64
go build
move /y wireguard build\wireguard-go-darwin