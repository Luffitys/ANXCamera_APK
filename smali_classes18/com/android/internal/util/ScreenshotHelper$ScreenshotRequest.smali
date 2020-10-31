.class public Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;
.super Ljava/lang/Object;
.source "ScreenshotHelper.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/ScreenshotHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScreenshotRequest"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBitmapBundle:Landroid/os/Bundle;

.field private mBoundsInScreen:Landroid/graphics/Rect;

.field private mHasNavBar:Z

.field private mHasStatusBar:Z

.field private mInsets:Landroid/graphics/Insets;

.field private mSource:I

.field private mTaskId:I

.field private mTopComponent:Landroid/content/ComponentName;

.field private mUserId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest$1;

    invoke-direct {v0}, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest$1;-><init>()V

    sput-object v0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/Bundle;Landroid/graphics/Rect;Landroid/graphics/Insets;IILandroid/content/ComponentName;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mSource:I

    iput-object p2, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mBitmapBundle:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mBoundsInScreen:Landroid/graphics/Rect;

    iput-object p4, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mInsets:Landroid/graphics/Insets;

    iput p5, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mTaskId:I

    iput p6, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mUserId:I

    iput-object p7, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mTopComponent:Landroid/content/ComponentName;

    return-void
.end method

.method constructor <init>(IZZ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mSource:I

    iput-boolean p2, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mHasStatusBar:Z

    iput-boolean p3, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mHasNavBar:Z

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mSource:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mHasStatusBar:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mHasNavBar:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_60

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mBitmapBundle:Landroid/os/Bundle;

    const-class v0, Landroid/graphics/Rect;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mBoundsInScreen:Landroid/graphics/Rect;

    const-class v0, Landroid/graphics/Insets;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Insets;

    iput-object v0, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mInsets:Landroid/graphics/Insets;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mTaskId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mUserId:I

    const-class v0, Landroid/content/ComponentName;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mTopComponent:Landroid/content/ComponentName;

    :cond_60
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getBitmapBundle()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mBitmapBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getBoundsInScreen()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mBoundsInScreen:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getHasNavBar()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mHasNavBar:Z

    return v0
.end method

.method public getHasStatusBar()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mHasStatusBar:Z

    return v0
.end method

.method public getInsets()Landroid/graphics/Insets;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mInsets:Landroid/graphics/Insets;

    return-object v0
.end method

.method public getSource()I
    .registers 2

    iget v0, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mSource:I

    return v0
.end method

.method public getTaskId()I
    .registers 2

    iget v0, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mTaskId:I

    return v0
.end method

.method public getTopComponent()Landroid/content/ComponentName;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mTopComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getUserId()I
    .registers 2

    iget v0, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mUserId:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget v0, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mSource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mHasStatusBar:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mHasNavBar:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mBitmapBundle:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-nez v0, :cond_18

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3a

    :cond_18
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mBitmapBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mInsets:Landroid/graphics/Insets;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mTaskId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mUserId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mTopComponent:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    :goto_3a
    return-void
.end method
