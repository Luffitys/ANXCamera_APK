.class Landroid/media/MediaExtractor$2;
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

.field final synthetic val$webmSchemeInitData:Landroid/media/DrmInitData$SchemeInitData;


# direct methods
.method constructor <init>(Landroid/media/MediaExtractor;Landroid/media/DrmInitData$SchemeInitData;)V
    .registers 3

    iput-object p1, p0, Landroid/media/MediaExtractor$2;->this$0:Landroid/media/MediaExtractor;

    iput-object p2, p0, Landroid/media/MediaExtractor$2;->val$webmSchemeInitData:Landroid/media/DrmInitData$SchemeInitData;

    invoke-direct {p0}, Landroid/media/DrmInitData;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/util/UUID;)Landroid/media/DrmInitData$SchemeInitData;
    .registers 3

    iget-object v0, p0, Landroid/media/MediaExtractor$2;->val$webmSchemeInitData:Landroid/media/DrmInitData$SchemeInitData;

    return-object v0
.end method

.method public getSchemeInitDataAt(I)Landroid/media/DrmInitData$SchemeInitData;
    .registers 3

    iget-object v0, p0, Landroid/media/MediaExtractor$2;->val$webmSchemeInitData:Landroid/media/DrmInitData$SchemeInitData;

    return-object v0
.end method

.method public getSchemeInitDataCount()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
