.class public Lcom/android/camera/effect/FaceAnalyzeInfo;
.super Ljava/lang/Object;
.source "FaceAnalyzeInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/camera/effect/FaceAnalyzeInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mAge:[F

.field public mFaceNum:I

.field public mFaceScore:[F

.field public mGender:[F

.field public mProp:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/effect/FaceAnalyzeInfo$1;

    invoke-direct {v0}, Lcom/android/camera/effect/FaceAnalyzeInfo$1;-><init>()V

    sput-object v0, Lcom/android/camera/effect/FaceAnalyzeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/FaceAnalyzeInfo;->mFaceNum:I

    iget-object v0, p0, Lcom/android/camera/effect/FaceAnalyzeInfo;->mGender:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readFloatArray([F)V

    iget-object v0, p0, Lcom/android/camera/effect/FaceAnalyzeInfo;->mAge:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readFloatArray([F)V

    iget-object v0, p0, Lcom/android/camera/effect/FaceAnalyzeInfo;->mFaceScore:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readFloatArray([F)V

    iget-object p0, p0, Lcom/android/camera/effect/FaceAnalyzeInfo;->mProp:[F

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->readFloatArray([F)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/camera/effect/FaceAnalyzeInfo;->mFaceNum:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/camera/effect/FaceAnalyzeInfo;->mGender:[F

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/camera/effect/FaceAnalyzeInfo;->mAge:[F

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    iget-object p0, p0, Lcom/android/camera/effect/FaceAnalyzeInfo;->mFaceScore:[F

    aget p0, p0, v3

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const/4 v2, 0x3

    aput-object p0, v1, v2

    const-string p0, "face num: %d | gender: %d | age: %d | facescore: %d"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/android/camera/effect/FaceAnalyzeInfo;->mFaceNum:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/android/camera/effect/FaceAnalyzeInfo;->mGender:[F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloatArray([F)V

    iget-object p2, p0, Lcom/android/camera/effect/FaceAnalyzeInfo;->mAge:[F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloatArray([F)V

    iget-object p2, p0, Lcom/android/camera/effect/FaceAnalyzeInfo;->mFaceScore:[F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloatArray([F)V

    iget-object p0, p0, Lcom/android/camera/effect/FaceAnalyzeInfo;->mProp:[F

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeFloatArray([F)V

    return-void
.end method
