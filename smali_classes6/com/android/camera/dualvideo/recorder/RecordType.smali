.class public final enum Lcom/android/camera/dualvideo/recorder/RecordType;
.super Ljava/lang/Enum;
.source ""


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/dualvideo/recorder/RecordType;

.field public static final enum MERGED:Lcom/android/camera/dualvideo/recorder/RecordType;

.field public static final enum STANDALONE:Lcom/android/camera/dualvideo/recorder/RecordType;


# instance fields
.field private mIndex:I

.field private mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/camera/dualvideo/recorder/RecordType;

    const-string v1, "MERGED"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v1, v3}, Lcom/android/camera/dualvideo/recorder/RecordType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/android/camera/dualvideo/recorder/RecordType;->MERGED:Lcom/android/camera/dualvideo/recorder/RecordType;

    new-instance v0, Lcom/android/camera/dualvideo/recorder/RecordType;

    const-string v1, "STANDALONE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v1, v4}, Lcom/android/camera/dualvideo/recorder/RecordType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/android/camera/dualvideo/recorder/RecordType;->STANDALONE:Lcom/android/camera/dualvideo/recorder/RecordType;

    new-array v1, v4, [Lcom/android/camera/dualvideo/recorder/RecordType;

    sget-object v4, Lcom/android/camera/dualvideo/recorder/RecordType;->MERGED:Lcom/android/camera/dualvideo/recorder/RecordType;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/android/camera/dualvideo/recorder/RecordType;->$VALUES:[Lcom/android/camera/dualvideo/recorder/RecordType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/android/camera/dualvideo/recorder/RecordType;->mName:Ljava/lang/String;

    iput p4, p0, Lcom/android/camera/dualvideo/recorder/RecordType;->mIndex:I

    return-void
.end method

.method static synthetic OooO00o(Ljava/lang/String;Lcom/android/camera/dualvideo/recorder/RecordType;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/recorder/RecordType;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static getTypeByName(Ljava/lang/String;)Lcom/android/camera/dualvideo/recorder/RecordType;
    .locals 2

    invoke-static {}, Lcom/android/camera/dualvideo/recorder/RecordType;->values()[Lcom/android/camera/dualvideo/recorder/RecordType;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/camera/dualvideo/recorder/OooO0oO;

    invoke-direct {v1, p0}, Lcom/android/camera/dualvideo/recorder/OooO0oO;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/dualvideo/recorder/RecordType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/dualvideo/recorder/RecordType;
    .locals 1

    const-class v0, Lcom/android/camera/dualvideo/recorder/RecordType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/camera/dualvideo/recorder/RecordType;

    return-object p0
.end method

.method public static values()[Lcom/android/camera/dualvideo/recorder/RecordType;
    .locals 1

    sget-object v0, Lcom/android/camera/dualvideo/recorder/RecordType;->$VALUES:[Lcom/android/camera/dualvideo/recorder/RecordType;

    invoke-virtual {v0}, [Lcom/android/camera/dualvideo/recorder/RecordType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/dualvideo/recorder/RecordType;

    return-object v0
.end method


# virtual methods
.method public getIndex()I
    .locals 0

    iget p0, p0, Lcom/android/camera/dualvideo/recorder/RecordType;->mIndex:I

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/recorder/RecordType;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecordType_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/dualvideo/recorder/RecordType;->mName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
