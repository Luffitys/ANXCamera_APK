.class public Landroid/media/MediaTranscodeManager$TranscodingRequest$Builder;
.super Ljava/lang/Object;
.source "MediaTranscodeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaTranscodeManager$TranscodingRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mDstFormat:Landroid/media/MediaFormat;

.field private mDstUri:Landroid/net/Uri;

.field private mSrcUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/media/MediaTranscodeManager$TranscodingRequest$Builder;)Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Landroid/media/MediaTranscodeManager$TranscodingRequest$Builder;->mSrcUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$100(Landroid/media/MediaTranscodeManager$TranscodingRequest$Builder;)Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Landroid/media/MediaTranscodeManager$TranscodingRequest$Builder;->mDstUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$200(Landroid/media/MediaTranscodeManager$TranscodingRequest$Builder;)Landroid/media/MediaFormat;
    .registers 2

    iget-object v0, p0, Landroid/media/MediaTranscodeManager$TranscodingRequest$Builder;->mDstFormat:Landroid/media/MediaFormat;

    return-object v0
.end method


# virtual methods
.method public build()Landroid/media/MediaTranscodeManager$TranscodingRequest;
    .registers 3

    new-instance v0, Landroid/media/MediaTranscodeManager$TranscodingRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/MediaTranscodeManager$TranscodingRequest;-><init>(Landroid/media/MediaTranscodeManager$TranscodingRequest$Builder;Landroid/media/MediaTranscodeManager$1;)V

    return-object v0
.end method

.method public setDestinationFormat(Landroid/media/MediaFormat;)Landroid/media/MediaTranscodeManager$TranscodingRequest$Builder;
    .registers 2

    iput-object p1, p0, Landroid/media/MediaTranscodeManager$TranscodingRequest$Builder;->mDstFormat:Landroid/media/MediaFormat;

    return-object p0
.end method

.method public setDestinationUri(Landroid/net/Uri;)Landroid/media/MediaTranscodeManager$TranscodingRequest$Builder;
    .registers 2

    iput-object p1, p0, Landroid/media/MediaTranscodeManager$TranscodingRequest$Builder;->mDstUri:Landroid/net/Uri;

    return-object p0
.end method

.method public setSourceUri(Landroid/net/Uri;)Landroid/media/MediaTranscodeManager$TranscodingRequest$Builder;
    .registers 2

    iput-object p1, p0, Landroid/media/MediaTranscodeManager$TranscodingRequest$Builder;->mSrcUri:Landroid/net/Uri;

    return-object p0
.end method
