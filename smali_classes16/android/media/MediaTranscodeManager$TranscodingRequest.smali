.class public final Landroid/media/MediaTranscodeManager$TranscodingRequest;
.super Ljava/lang/Object;
.source "MediaTranscodeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaTranscodeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TranscodingRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaTranscodeManager$TranscodingRequest$Builder;
    }
.end annotation


# instance fields
.field private mDstFormat:Landroid/media/MediaFormat;

.field private mDstUri:Landroid/net/Uri;

.field private mSrcUri:Landroid/net/Uri;


# direct methods
.method private constructor <init>(Landroid/media/MediaTranscodeManager$TranscodingRequest$Builder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    # getter for: Landroid/media/MediaTranscodeManager$TranscodingRequest$Builder;->mSrcUri:Landroid/net/Uri;
    invoke-static {p1}, Landroid/media/MediaTranscodeManager$TranscodingRequest$Builder;->access$000(Landroid/media/MediaTranscodeManager$TranscodingRequest$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaTranscodeManager$TranscodingRequest;->mSrcUri:Landroid/net/Uri;

    # getter for: Landroid/media/MediaTranscodeManager$TranscodingRequest$Builder;->mDstUri:Landroid/net/Uri;
    invoke-static {p1}, Landroid/media/MediaTranscodeManager$TranscodingRequest$Builder;->access$100(Landroid/media/MediaTranscodeManager$TranscodingRequest$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaTranscodeManager$TranscodingRequest;->mDstUri:Landroid/net/Uri;

    # getter for: Landroid/media/MediaTranscodeManager$TranscodingRequest$Builder;->mDstFormat:Landroid/media/MediaFormat;
    invoke-static {p1}, Landroid/media/MediaTranscodeManager$TranscodingRequest$Builder;->access$200(Landroid/media/MediaTranscodeManager$TranscodingRequest$Builder;)Landroid/media/MediaFormat;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaTranscodeManager$TranscodingRequest;->mDstFormat:Landroid/media/MediaFormat;

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/MediaTranscodeManager$TranscodingRequest$Builder;Landroid/media/MediaTranscodeManager$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/MediaTranscodeManager$TranscodingRequest;-><init>(Landroid/media/MediaTranscodeManager$TranscodingRequest$Builder;)V

    return-void
.end method
