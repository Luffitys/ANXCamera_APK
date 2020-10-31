.class public final synthetic Landroid/media/-$$Lambda$MediaTranscodeManager$TranscodingJob$QvWheBYah-rzcUxaPabT8c9A4r4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/media/MediaTranscodeManager$TranscodingJob;


# direct methods
.method public synthetic constructor <init>(Landroid/media/MediaTranscodeManager$TranscodingJob;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/-$$Lambda$MediaTranscodeManager$TranscodingJob$QvWheBYah-rzcUxaPabT8c9A4r4;->f$0:Landroid/media/MediaTranscodeManager$TranscodingJob;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/media/-$$Lambda$MediaTranscodeManager$TranscodingJob$QvWheBYah-rzcUxaPabT8c9A4r4;->f$0:Landroid/media/MediaTranscodeManager$TranscodingJob;

    invoke-virtual {v0}, Landroid/media/MediaTranscodeManager$TranscodingJob;->lambda$setJobFinished$1$MediaTranscodeManager$TranscodingJob()V

    return-void
.end method
