.class public Lnet/majorkernelpanic/streaming/mp4/MP4Config;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final TAG:Ljava/lang/String; = "MP4Config"


# instance fields
.field private mPPS:Ljava/lang/String;

.field private mProfilLevel:Ljava/lang/String;

.field private mSPS:Ljava/lang/String;

.field private mp4Parser:Lnet/majorkernelpanic/streaming/mp4/MP4Parser;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-static {p1}, Lnet/majorkernelpanic/streaming/mp4/MP4Parser;->parse(Ljava/lang/String;)Lnet/majorkernelpanic/streaming/mp4/MP4Parser;

    move-result-object p1

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/mp4/MP4Config;->mp4Parser:Lnet/majorkernelpanic/streaming/mp4/MP4Parser;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object p1, p0, Lnet/majorkernelpanic/streaming/mp4/MP4Config;->mp4Parser:Lnet/majorkernelpanic/streaming/mp4/MP4Parser;

    invoke-virtual {p1}, Lnet/majorkernelpanic/streaming/mp4/MP4Parser;->getStsdBox()Lnet/majorkernelpanic/streaming/mp4/StsdBox;

    move-result-object p1

    invoke-virtual {p1}, Lnet/majorkernelpanic/streaming/mp4/StsdBox;->getB64PPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/mp4/MP4Config;->mPPS:Ljava/lang/String;

    invoke-virtual {p1}, Lnet/majorkernelpanic/streaming/mp4/StsdBox;->getB64SPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/mp4/MP4Config;->mSPS:Ljava/lang/String;

    invoke-virtual {p1}, Lnet/majorkernelpanic/streaming/mp4/StsdBox;->getProfileLevel()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/mp4/MP4Config;->mProfilLevel:Ljava/lang/String;

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/mp4/MP4Config;->mp4Parser:Lnet/majorkernelpanic/streaming/mp4/MP4Parser;

    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/mp4/MP4Parser;->close()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lnet/majorkernelpanic/streaming/mp4/MP4Config;->mPPS:Ljava/lang/String;

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/mp4/MP4Config;->mSPS:Ljava/lang/String;

    const/4 p2, 0x2

    invoke-static {p1, p2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    const/4 p2, 0x1

    const/4 v0, 0x3

    invoke-static {p1, p2, v0}, Lnet/majorkernelpanic/streaming/mp4/MP4Parser;->toHexString([BII)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/mp4/MP4Config;->mProfilLevel:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/mp4/MP4Config;->mProfilLevel:Ljava/lang/String;

    iput-object p3, p0, Lnet/majorkernelpanic/streaming/mp4/MP4Config;->mPPS:Ljava/lang/String;

    iput-object p2, p0, Lnet/majorkernelpanic/streaming/mp4/MP4Config;->mSPS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([B[B)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p2, v1, v0, v2}, Landroid/util/Base64;->encodeToString([BIII)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lnet/majorkernelpanic/streaming/mp4/MP4Config;->mPPS:Ljava/lang/String;

    array-length p2, p1

    invoke-static {p1, v1, p2, v2}, Landroid/util/Base64;->encodeToString([BIII)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lnet/majorkernelpanic/streaming/mp4/MP4Config;->mSPS:Ljava/lang/String;

    const/4 p2, 0x1

    const/4 v0, 0x3

    invoke-static {p1, p2, v0}, Lnet/majorkernelpanic/streaming/mp4/MP4Parser;->toHexString([BII)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/mp4/MP4Config;->mProfilLevel:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getB64PPS()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PPS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/mp4/MP4Config;->mPPS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MP4Config"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/mp4/MP4Config;->mPPS:Ljava/lang/String;

    return-object p0
.end method

.method public getB64SPS()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SPS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/mp4/MP4Config;->mSPS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MP4Config"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/mp4/MP4Config;->mSPS:Ljava/lang/String;

    return-object p0
.end method

.method public getProfileLevel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/mp4/MP4Config;->mProfilLevel:Ljava/lang/String;

    return-object p0
.end method
