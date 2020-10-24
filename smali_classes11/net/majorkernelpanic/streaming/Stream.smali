.class public interface abstract Lnet/majorkernelpanic/streaming/Stream;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract configure()V
.end method

.method public abstract getBitrate()J
.end method

.method public abstract getDestinationPorts()[I
.end method

.method public abstract getLocalPorts()[I
.end method

.method public abstract getSSRC()I
.end method

.method public abstract getSessionDescription()Ljava/lang/String;
.end method

.method public abstract isStreaming()Z
.end method

.method public abstract setDestinationAddress(Ljava/net/InetAddress;)V
.end method

.method public abstract setDestinationPorts(I)V
.end method

.method public abstract setDestinationPorts(II)V
.end method

.method public abstract setOutputStream(Ljava/io/OutputStream;B)V
.end method

.method public abstract setTimeToLive(I)V
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
