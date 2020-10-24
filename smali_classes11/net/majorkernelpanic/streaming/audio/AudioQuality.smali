.class public Lnet/majorkernelpanic/streaming/audio/AudioQuality;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final DEFAULT_AUDIO_QUALITY:Lnet/majorkernelpanic/streaming/audio/AudioQuality;


# instance fields
.field public bitRate:I

.field public samplingRate:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/majorkernelpanic/streaming/audio/AudioQuality;

    const/16 v1, 0x1f40

    const/16 v2, 0x7d00

    invoke-direct {v0, v1, v2}, Lnet/majorkernelpanic/streaming/audio/AudioQuality;-><init>(II)V

    sput-object v0, Lnet/majorkernelpanic/streaming/audio/AudioQuality;->DEFAULT_AUDIO_QUALITY:Lnet/majorkernelpanic/streaming/audio/AudioQuality;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lnet/majorkernelpanic/streaming/audio/AudioQuality;->samplingRate:I

    iput v0, p0, Lnet/majorkernelpanic/streaming/audio/AudioQuality;->bitRate:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lnet/majorkernelpanic/streaming/audio/AudioQuality;->samplingRate:I

    iput v0, p0, Lnet/majorkernelpanic/streaming/audio/AudioQuality;->bitRate:I

    iput p1, p0, Lnet/majorkernelpanic/streaming/audio/AudioQuality;->samplingRate:I

    iput p2, p0, Lnet/majorkernelpanic/streaming/audio/AudioQuality;->bitRate:I

    return-void
.end method

.method public static copyOf(Lnet/majorkernelpanic/streaming/audio/AudioQuality;)Lnet/majorkernelpanic/streaming/audio/AudioQuality;
    .locals 2

    new-instance v0, Lnet/majorkernelpanic/streaming/audio/AudioQuality;

    iget v1, p0, Lnet/majorkernelpanic/streaming/audio/AudioQuality;->samplingRate:I

    iget p0, p0, Lnet/majorkernelpanic/streaming/audio/AudioQuality;->bitRate:I

    invoke-direct {v0, v1, p0}, Lnet/majorkernelpanic/streaming/audio/AudioQuality;-><init>(II)V

    return-object v0
.end method

.method public static parseQuality(Ljava/lang/String;)Lnet/majorkernelpanic/streaming/audio/AudioQuality;
    .locals 2

    sget-object v0, Lnet/majorkernelpanic/streaming/audio/AudioQuality;->DEFAULT_AUDIO_QUALITY:Lnet/majorkernelpanic/streaming/audio/AudioQuality;

    invoke-static {v0}, Lnet/majorkernelpanic/streaming/audio/AudioQuality;->copyOf(Lnet/majorkernelpanic/streaming/audio/AudioQuality;)Lnet/majorkernelpanic/streaming/audio/AudioQuality;

    move-result-object v0

    if-eqz p0, :cond_0

    const-string v1, "-"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    :try_start_0
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    iput v1, v0, Lnet/majorkernelpanic/streaming/audio/AudioQuality;->bitRate:I

    const/4 v1, 0x1

    aget-object p0, p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lnet/majorkernelpanic/streaming/audio/AudioQuality;->samplingRate:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v0
.end method


# virtual methods
.method public equals(Lnet/majorkernelpanic/streaming/audio/AudioQuality;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget v1, p1, Lnet/majorkernelpanic/streaming/audio/AudioQuality;->samplingRate:I

    iget v2, p0, Lnet/majorkernelpanic/streaming/audio/AudioQuality;->samplingRate:I

    if-ne v1, v2, :cond_1

    iget p1, p1, Lnet/majorkernelpanic/streaming/audio/AudioQuality;->bitRate:I

    iget p0, p0, Lnet/majorkernelpanic/streaming/audio/AudioQuality;->bitRate:I

    if-ne p1, p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method
