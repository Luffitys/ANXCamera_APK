.class public final enum Lcom/xiaomi/mediaprocess/RecordingStatus;
.super Ljava/lang/Enum;
.source "RecordingStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/mediaprocess/RecordingStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/mediaprocess/RecordingStatus;

.field public static final enum RecordingPaused:Lcom/xiaomi/mediaprocess/RecordingStatus;

.field public static final enum RecordingPlaying:Lcom/xiaomi/mediaprocess/RecordingStatus;

.field public static final enum RecordingStopped:Lcom/xiaomi/mediaprocess/RecordingStatus;


# instance fields
.field private nCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/xiaomi/mediaprocess/RecordingStatus;

    const/4 v1, 0x0

    const-string v2, "RecordingStopped"

    invoke-direct {v0, v2, v1, v1}, Lcom/xiaomi/mediaprocess/RecordingStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/mediaprocess/RecordingStatus;->RecordingStopped:Lcom/xiaomi/mediaprocess/RecordingStatus;

    new-instance v0, Lcom/xiaomi/mediaprocess/RecordingStatus;

    const/4 v2, 0x1

    const-string v3, "RecordingPlaying"

    invoke-direct {v0, v3, v2, v2}, Lcom/xiaomi/mediaprocess/RecordingStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/mediaprocess/RecordingStatus;->RecordingPlaying:Lcom/xiaomi/mediaprocess/RecordingStatus;

    new-instance v0, Lcom/xiaomi/mediaprocess/RecordingStatus;

    const/4 v3, 0x2

    const-string v4, "RecordingPaused"

    invoke-direct {v0, v4, v3, v3}, Lcom/xiaomi/mediaprocess/RecordingStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/mediaprocess/RecordingStatus;->RecordingPaused:Lcom/xiaomi/mediaprocess/RecordingStatus;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/xiaomi/mediaprocess/RecordingStatus;

    sget-object v4, Lcom/xiaomi/mediaprocess/RecordingStatus;->RecordingStopped:Lcom/xiaomi/mediaprocess/RecordingStatus;

    aput-object v4, v0, v1

    sget-object v1, Lcom/xiaomi/mediaprocess/RecordingStatus;->RecordingPlaying:Lcom/xiaomi/mediaprocess/RecordingStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/mediaprocess/RecordingStatus;->RecordingPaused:Lcom/xiaomi/mediaprocess/RecordingStatus;

    aput-object v1, v0, v3

    sput-object v0, Lcom/xiaomi/mediaprocess/RecordingStatus;->$VALUES:[Lcom/xiaomi/mediaprocess/RecordingStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/xiaomi/mediaprocess/RecordingStatus;->nCode:I

    return-void
.end method

.method public static int2enum(I)Lcom/xiaomi/mediaprocess/RecordingStatus;
    .locals 6

    sget-object v0, Lcom/xiaomi/mediaprocess/RecordingStatus;->RecordingStopped:Lcom/xiaomi/mediaprocess/RecordingStatus;

    invoke-static {}, Lcom/xiaomi/mediaprocess/RecordingStatus;->values()[Lcom/xiaomi/mediaprocess/RecordingStatus;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    if-ne v5, p0, :cond_0

    move-object v0, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/mediaprocess/RecordingStatus;
    .locals 1

    const-class v0, Lcom/xiaomi/mediaprocess/RecordingStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mediaprocess/RecordingStatus;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/mediaprocess/RecordingStatus;
    .locals 1

    sget-object v0, Lcom/xiaomi/mediaprocess/RecordingStatus;->$VALUES:[Lcom/xiaomi/mediaprocess/RecordingStatus;

    invoke-virtual {v0}, [Lcom/xiaomi/mediaprocess/RecordingStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/mediaprocess/RecordingStatus;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lcom/xiaomi/mediaprocess/RecordingStatus;->nCode:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
