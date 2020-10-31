.class public Landroid/telephony/mbms/DownloadRequest$Builder;
.super Ljava/lang/Object;
.source "DownloadRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/mbms/DownloadRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private appIntent:Ljava/lang/String;

.field private destination:Landroid/net/Uri;

.field private fileServiceId:Ljava/lang/String;

.field private source:Landroid/net/Uri;

.field private subscriptionId:I

.field private version:I


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/net/Uri;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/telephony/mbms/DownloadRequest$Builder;->version:I

    if-eqz p1, :cond_f

    if-eqz p2, :cond_f

    iput-object p1, p0, Landroid/telephony/mbms/DownloadRequest$Builder;->source:Landroid/net/Uri;

    iput-object p2, p0, Landroid/telephony/mbms/DownloadRequest$Builder;->destination:Landroid/net/Uri;

    return-void

    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Source and destination URIs must be non-null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fromDownloadRequest(Landroid/telephony/mbms/DownloadRequest;)Landroid/telephony/mbms/DownloadRequest$Builder;
    .registers 4

    new-instance v0, Landroid/telephony/mbms/DownloadRequest$Builder;

    # getter for: Landroid/telephony/mbms/DownloadRequest;->sourceUri:Landroid/net/Uri;
    invoke-static {p0}, Landroid/telephony/mbms/DownloadRequest;->access$100(Landroid/telephony/mbms/DownloadRequest;)Landroid/net/Uri;

    move-result-object v1

    # getter for: Landroid/telephony/mbms/DownloadRequest;->destinationUri:Landroid/net/Uri;
    invoke-static {p0}, Landroid/telephony/mbms/DownloadRequest;->access$200(Landroid/telephony/mbms/DownloadRequest;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/telephony/mbms/DownloadRequest$Builder;-><init>(Landroid/net/Uri;Landroid/net/Uri;)V

    # getter for: Landroid/telephony/mbms/DownloadRequest;->fileServiceId:Ljava/lang/String;
    invoke-static {p0}, Landroid/telephony/mbms/DownloadRequest;->access$000(Landroid/telephony/mbms/DownloadRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/mbms/DownloadRequest$Builder;->setServiceId(Ljava/lang/String;)Landroid/telephony/mbms/DownloadRequest$Builder;

    move-result-object v0

    # getter for: Landroid/telephony/mbms/DownloadRequest;->subscriptionId:I
    invoke-static {p0}, Landroid/telephony/mbms/DownloadRequest;->access$300(Landroid/telephony/mbms/DownloadRequest;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/mbms/DownloadRequest$Builder;->setSubscriptionId(I)Landroid/telephony/mbms/DownloadRequest$Builder;

    move-result-object v0

    # getter for: Landroid/telephony/mbms/DownloadRequest;->serializedResultIntentForApp:Ljava/lang/String;
    invoke-static {p0}, Landroid/telephony/mbms/DownloadRequest;->access$400(Landroid/telephony/mbms/DownloadRequest;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/telephony/mbms/DownloadRequest$Builder;->appIntent:Ljava/lang/String;

    return-object v0
.end method

.method public static fromSerializedRequest([B)Landroid/telephony/mbms/DownloadRequest$Builder;
    .registers 7

    const-string v0, "MbmsDownloadRequest"

    :try_start_2
    new-instance v1, Ljava/io/ObjectInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    nop

    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;

    new-instance v3, Landroid/telephony/mbms/DownloadRequest$Builder;

    # getter for: Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->source:Landroid/net/Uri;
    invoke-static {v2}, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->access$600(Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;)Landroid/net/Uri;

    move-result-object v4

    # getter for: Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->destination:Landroid/net/Uri;
    invoke-static {v2}, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->access$700(Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/telephony/mbms/DownloadRequest$Builder;-><init>(Landroid/net/Uri;Landroid/net/Uri;)V

    # getter for: Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->version:I
    invoke-static {v2}, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->access$800(Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;)I

    move-result v4

    iput v4, v3, Landroid/telephony/mbms/DownloadRequest$Builder;->version:I

    # getter for: Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->appIntent:Ljava/lang/String;
    invoke-static {v2}, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->access$900(Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/telephony/mbms/DownloadRequest$Builder;->appIntent:Ljava/lang/String;

    # getter for: Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->fileServiceId:Ljava/lang/String;
    invoke-static {v2}, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->access$1000(Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/telephony/mbms/DownloadRequest$Builder;->fileServiceId:Ljava/lang/String;

    # getter for: Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->subscriptionId:I
    invoke-static {v2}, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->access$1100(Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;)I

    move-result v4

    iput v4, v3, Landroid/telephony/mbms/DownloadRequest$Builder;->subscriptionId:I
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_38} :catch_46
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_38} :catch_3a

    nop

    return-object v3

    :catch_3a
    move-exception v1

    const-string v2, "Got ClassNotFoundException trying to parse opaque data"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_46
    move-exception v1

    const-string v2, "Got IOException trying to parse opaque data"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public build()Landroid/telephony/mbms/DownloadRequest;
    .registers 10

    new-instance v8, Landroid/telephony/mbms/DownloadRequest;

    iget-object v1, p0, Landroid/telephony/mbms/DownloadRequest$Builder;->fileServiceId:Ljava/lang/String;

    iget-object v2, p0, Landroid/telephony/mbms/DownloadRequest$Builder;->source:Landroid/net/Uri;

    iget-object v3, p0, Landroid/telephony/mbms/DownloadRequest$Builder;->destination:Landroid/net/Uri;

    iget v4, p0, Landroid/telephony/mbms/DownloadRequest$Builder;->subscriptionId:I

    iget-object v5, p0, Landroid/telephony/mbms/DownloadRequest$Builder;->appIntent:Ljava/lang/String;

    iget v6, p0, Landroid/telephony/mbms/DownloadRequest$Builder;->version:I

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/telephony/mbms/DownloadRequest;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;ILandroid/telephony/mbms/DownloadRequest$1;)V

    return-object v8
.end method

.method public setAppIntent(Landroid/content/Intent;)Landroid/telephony/mbms/DownloadRequest$Builder;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/mbms/DownloadRequest$Builder;->appIntent:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const v1, 0xc350

    if-gt v0, v1, :cond_11

    return-object p0

    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "App intent must not exceed length 50000"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setServiceId(Ljava/lang/String;)Landroid/telephony/mbms/DownloadRequest$Builder;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iput-object p1, p0, Landroid/telephony/mbms/DownloadRequest$Builder;->fileServiceId:Ljava/lang/String;

    return-object p0
.end method

.method public setServiceInfo(Landroid/telephony/mbms/FileServiceInfo;)Landroid/telephony/mbms/DownloadRequest$Builder;
    .registers 3

    invoke-virtual {p1}, Landroid/telephony/mbms/FileServiceInfo;->getServiceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/mbms/DownloadRequest$Builder;->fileServiceId:Ljava/lang/String;

    return-object p0
.end method

.method public setSubscriptionId(I)Landroid/telephony/mbms/DownloadRequest$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/mbms/DownloadRequest$Builder;->subscriptionId:I

    return-object p0
.end method
