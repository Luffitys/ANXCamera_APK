.class public Lcom/android/camera/fragment/aiwatermark/FragmentGenWatermark;
.super Lcom/android/camera/fragment/aiwatermark/FragmentBaseWatermark;
.source ""


# static fields
.field public static final FRAGMENT_INFO:I = 0xffff7

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/camera/fragment/aiwatermark/FragmentGenWatermark;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/fragment/aiwatermark/FragmentGenWatermark;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/aiwatermark/FragmentBaseWatermark;-><init>()V

    return-void
.end method


# virtual methods
.method public getWatermarkList()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/aiwatermark/FragmentBaseWatermark;->mData:Lcom/android/camera/aiwatermark/data/AbstractWatermarkData;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/aiwatermark/data/GeneralWatermark;

    invoke-direct {v0}, Lcom/android/camera/aiwatermark/data/GeneralWatermark;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/aiwatermark/FragmentBaseWatermark;->mData:Lcom/android/camera/aiwatermark/data/AbstractWatermarkData;

    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/aiwatermark/FragmentBaseWatermark;->mData:Lcom/android/camera/aiwatermark/data/AbstractWatermarkData;

    invoke-virtual {p0}, Lcom/android/camera/aiwatermark/data/AbstractWatermarkData;->getForManual()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method
