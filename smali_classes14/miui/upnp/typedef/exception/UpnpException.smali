.class public Lmiui/upnp/typedef/exception/UpnpException;
.super Ljava/lang/Exception;
.source "UpnpException.java"


# instance fields
.field private errorCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lmiui/upnp/typedef/exception/UpnpException;->errorCode:I

    return-void
.end method

.method public constructor <init>(Lmiui/upnp/typedef/error/UpnpError;)V
    .registers 3

    invoke-virtual {p1}, Lmiui/upnp/typedef/error/UpnpError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lmiui/upnp/typedef/error/UpnpError;->getCode()I

    move-result v0

    iput v0, p0, Lmiui/upnp/typedef/exception/UpnpException;->errorCode:I

    return-void
.end method

.method public constructor <init>(Lmiui/upnp/typedef/error/UpnpError;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lmiui/upnp/typedef/error/UpnpError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lmiui/upnp/typedef/error/UpnpError;->getCode()I

    move-result v0

    iput v0, p0, Lmiui/upnp/typedef/exception/UpnpException;->errorCode:I

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .registers 2

    iget v0, p0, Lmiui/upnp/typedef/exception/UpnpException;->errorCode:I

    return v0
.end method

.method public toUpnpError()Lmiui/upnp/typedef/error/UpnpError;
    .registers 4

    new-instance v0, Lmiui/upnp/typedef/error/UpnpError;

    iget v1, p0, Lmiui/upnp/typedef/exception/UpnpException;->errorCode:I

    invoke-virtual {p0}, Lmiui/upnp/typedef/exception/UpnpException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/error/UpnpError;-><init>(ILjava/lang/String;)V

    return-object v0
.end method
