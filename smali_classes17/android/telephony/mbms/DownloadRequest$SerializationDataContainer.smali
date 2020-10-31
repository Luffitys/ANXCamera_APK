.class Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;
.super Ljava/lang/Object;
.source "DownloadRequest.java"

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/mbms/DownloadRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerializationDataContainer"
.end annotation


# instance fields
.field private appIntent:Ljava/lang/String;

.field private destination:Landroid/net/Uri;

.field private fileServiceId:Ljava/lang/String;

.field private source:Landroid/net/Uri;

.field private subscriptionId:I

.field private version:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Landroid/telephony/mbms/DownloadRequest;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    # getter for: Landroid/telephony/mbms/DownloadRequest;->fileServiceId:Ljava/lang/String;
    invoke-static {p1}, Landroid/telephony/mbms/DownloadRequest;->access$000(Landroid/telephony/mbms/DownloadRequest;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->fileServiceId:Ljava/lang/String;

    # getter for: Landroid/telephony/mbms/DownloadRequest;->sourceUri:Landroid/net/Uri;
    invoke-static {p1}, Landroid/telephony/mbms/DownloadRequest;->access$100(Landroid/telephony/mbms/DownloadRequest;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->source:Landroid/net/Uri;

    # getter for: Landroid/telephony/mbms/DownloadRequest;->destinationUri:Landroid/net/Uri;
    invoke-static {p1}, Landroid/telephony/mbms/DownloadRequest;->access$200(Landroid/telephony/mbms/DownloadRequest;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->destination:Landroid/net/Uri;

    # getter for: Landroid/telephony/mbms/DownloadRequest;->subscriptionId:I
    invoke-static {p1}, Landroid/telephony/mbms/DownloadRequest;->access$300(Landroid/telephony/mbms/DownloadRequest;)I

    move-result v0

    iput v0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->subscriptionId:I

    # getter for: Landroid/telephony/mbms/DownloadRequest;->serializedResultIntentForApp:Ljava/lang/String;
    invoke-static {p1}, Landroid/telephony/mbms/DownloadRequest;->access$400(Landroid/telephony/mbms/DownloadRequest;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->appIntent:Ljava/lang/String;

    # getter for: Landroid/telephony/mbms/DownloadRequest;->version:I
    invoke-static {p1}, Landroid/telephony/mbms/DownloadRequest;->access$500(Landroid/telephony/mbms/DownloadRequest;)I

    move-result v0

    iput v0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->version:I

    return-void
.end method

.method static synthetic access$1000(Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->fileServiceId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;)I
    .registers 2

    iget v0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->subscriptionId:I

    return v0
.end method

.method static synthetic access$600(Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;)Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->source:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$700(Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;)Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->destination:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$800(Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;)I
    .registers 2

    iget v0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->version:I

    return v0
.end method

.method static synthetic access$900(Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->appIntent:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public readExternal(Ljava/io/ObjectInput;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/io/ObjectInput;->read()I

    move-result v0

    iput v0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->version:I

    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->fileServiceId:Ljava/lang/String;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->source:Landroid/net/Uri;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->destination:Landroid/net/Uri;

    invoke-interface {p1}, Ljava/io/ObjectInput;->read()I

    move-result v0

    iput v0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->subscriptionId:I

    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->appIntent:Ljava/lang/String;

    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->version:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->write(I)V

    iget-object v0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->fileServiceId:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->source:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->destination:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    iget v0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->subscriptionId:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->write(I)V

    iget-object v0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->appIntent:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    return-void
.end method
