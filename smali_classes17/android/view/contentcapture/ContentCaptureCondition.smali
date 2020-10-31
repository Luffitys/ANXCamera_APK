.class public final Landroid/view/contentcapture/ContentCaptureCondition;
.super Ljava/lang/Object;
.source "ContentCaptureCondition.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/contentcapture/ContentCaptureCondition$Flags;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/contentcapture/ContentCaptureCondition;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_IS_REGEX:I = 0x2


# instance fields
.field private final mFlags:I

.field private final mLocusId:Landroid/content/LocusId;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/view/contentcapture/ContentCaptureCondition$1;

    invoke-direct {v0}, Landroid/view/contentcapture/ContentCaptureCondition$1;-><init>()V

    sput-object v0, Landroid/view/contentcapture/ContentCaptureCondition;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/LocusId;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/LocusId;

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureCondition;->mLocusId:Landroid/content/LocusId;

    iput p2, p0, Landroid/view/contentcapture/ContentCaptureCondition;->mFlags:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    return v1

    :cond_13
    move-object v2, p1

    check-cast v2, Landroid/view/contentcapture/ContentCaptureCondition;

    iget v3, p0, Landroid/view/contentcapture/ContentCaptureCondition;->mFlags:I

    iget v4, v2, Landroid/view/contentcapture/ContentCaptureCondition;->mFlags:I

    if-eq v3, v4, :cond_1d

    return v1

    :cond_1d
    iget-object v3, p0, Landroid/view/contentcapture/ContentCaptureCondition;->mLocusId:Landroid/content/LocusId;

    if-nez v3, :cond_26

    iget-object v3, v2, Landroid/view/contentcapture/ContentCaptureCondition;->mLocusId:Landroid/content/LocusId;

    if-eqz v3, :cond_2f

    return v1

    :cond_26
    iget-object v4, v2, Landroid/view/contentcapture/ContentCaptureCondition;->mLocusId:Landroid/content/LocusId;

    invoke-virtual {v3, v4}, Landroid/content/LocusId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    return v1

    :cond_2f
    return v0
.end method

.method public getFlags()I
    .registers 2

    iget v0, p0, Landroid/view/contentcapture/ContentCaptureCondition;->mFlags:I

    return v0
.end method

.method public getLocusId()Landroid/content/LocusId;
    .registers 2

    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureCondition;->mLocusId:Landroid/content/LocusId;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    const/16 v0, 0x1f

    const/4 v1, 0x1

    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/view/contentcapture/ContentCaptureCondition;->mFlags:I

    add-int/2addr v2, v3

    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Landroid/view/contentcapture/ContentCaptureCondition;->mLocusId:Landroid/content/LocusId;

    if-nez v3, :cond_10

    const/4 v3, 0x0

    goto :goto_14

    :cond_10
    invoke-virtual {v3}, Landroid/content/LocusId;->hashCode()I

    move-result v3

    :goto_14
    add-int/2addr v1, v3

    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/contentcapture/ContentCaptureCondition;->mLocusId:Landroid/content/LocusId;

    invoke-virtual {v1}, Landroid/content/LocusId;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/view/contentcapture/ContentCaptureCondition;->mFlags:I

    if-eqz v1, :cond_27

    nop

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Landroid/view/contentcapture/ContentCaptureCondition;

    iget v2, p0, Landroid/view/contentcapture/ContentCaptureCondition;->mFlags:I

    const-string v3, "FLAG_"

    invoke-static {v1, v3, v2}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureCondition;->mLocusId:Landroid/content/LocusId;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Landroid/view/contentcapture/ContentCaptureCondition;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
