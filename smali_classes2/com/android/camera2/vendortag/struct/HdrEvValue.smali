.class public Lcom/android/camera2/vendortag/struct/HdrEvValue;
.super Ljava/lang/Object;
.source "HdrEvValue.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final TAG:Ljava/lang/String; = "HdrEvValue"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mHdrCheckerEvValue:[I

.field private mSequenceNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>([B)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    array-length v0, p1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    aget-byte v1, p1, v0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    aget-byte v1, p1, v0

    iput v1, p0, Lcom/android/camera2/vendortag/struct/HdrEvValue;->mSequenceNum:I

    iget v1, p0, Lcom/android/camera2/vendortag/struct/HdrEvValue;->mSequenceNum:I

    const/4 v2, 0x6

    if-gt v1, v2, :cond_1

    new-array v3, v1, [I

    iput-object v3, p0, Lcom/android/camera2/vendortag/struct/HdrEvValue;->mHdrCheckerEvValue:[I

    if-lez v1, :cond_3

    if-ge v1, v2, :cond_3

    :goto_0
    iget v1, p0, Lcom/android/camera2/vendortag/struct/HdrEvValue;->mSequenceNum:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/camera2/vendortag/struct/HdrEvValue;->mHdrCheckerEvValue:[I

    add-int/lit8 v2, v0, 0x1

    mul-int/lit8 v3, v2, 0x4

    aget-byte v3, p1, v3

    aput v3, v1, v0

    sget-object v1, Lcom/android/camera2/vendortag/struct/HdrEvValue;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HdrEvValue: evValue["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/camera2/vendortag/struct/HdrEvValue;->mHdrCheckerEvValue:[I

    aget v0, v4, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wrong sequenceNum "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/camera2/vendortag/struct/HdrEvValue;->mSequenceNum:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    const/4 p1, 0x3

    iput p1, p0, Lcom/android/camera2/vendortag/struct/HdrEvValue;->mSequenceNum:I

    new-array p1, p1, [I

    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/android/camera2/vendortag/struct/HdrEvValue;->mHdrCheckerEvValue:[I

    :cond_3
    return-void

    :array_0
    .array-data 4
        -0x6
        0x0
        0x6
    .end array-data
.end method


# virtual methods
.method public getHdrCheckerEvValue()[I
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/vendortag/struct/HdrEvValue;->mHdrCheckerEvValue:[I

    return-object p0
.end method

.method public getSequenceNum()I
    .locals 0

    iget p0, p0, Lcom/android/camera2/vendortag/struct/HdrEvValue;->mSequenceNum:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lcom/android/camera2/vendortag/struct/HdrEvValue;->mHdrCheckerEvValue:[I

    if-eqz v1, :cond_2

    array-length v1, v1

    if-lez v1, :cond_2

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/camera2/vendortag/struct/HdrEvValue;->mHdrCheckerEvValue:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera2/vendortag/struct/HdrEvValue;->mHdrCheckerEvValue:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
