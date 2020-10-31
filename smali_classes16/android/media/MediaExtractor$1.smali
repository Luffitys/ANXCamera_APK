.class Landroid/media/MediaExtractor$1;
.super Landroid/media/DrmInitData;
.source "MediaExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaExtractor;->getDrmInitData()Landroid/media/DrmInitData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaExtractor;

.field final synthetic val$initDataMap:Ljava/util/Map;

.field final synthetic val$schemeInitDatas:[Landroid/media/DrmInitData$SchemeInitData;


# direct methods
.method constructor <init>(Landroid/media/MediaExtractor;Ljava/util/Map;[Landroid/media/DrmInitData$SchemeInitData;)V
    .registers 4

    iput-object p1, p0, Landroid/media/MediaExtractor$1;->this$0:Landroid/media/MediaExtractor;

    iput-object p2, p0, Landroid/media/MediaExtractor$1;->val$initDataMap:Ljava/util/Map;

    iput-object p3, p0, Landroid/media/MediaExtractor$1;->val$schemeInitDatas:[Landroid/media/DrmInitData$SchemeInitData;

    invoke-direct {p0}, Landroid/media/DrmInitData;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/util/UUID;)Landroid/media/DrmInitData$SchemeInitData;
    .registers 3

    iget-object v0, p0, Landroid/media/MediaExtractor$1;->val$initDataMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/DrmInitData$SchemeInitData;

    return-object v0
.end method

.method public getSchemeInitDataAt(I)Landroid/media/DrmInitData$SchemeInitData;
    .registers 3

    iget-object v0, p0, Landroid/media/MediaExtractor$1;->val$schemeInitDatas:[Landroid/media/DrmInitData$SchemeInitData;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getSchemeInitDataCount()I
    .registers 2

    iget-object v0, p0, Landroid/media/MediaExtractor$1;->val$schemeInitDatas:[Landroid/media/DrmInitData$SchemeInitData;

    array-length v0, v0

    return v0
.end method
