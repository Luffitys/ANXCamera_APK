.class public final synthetic Landroid/media/tv/tuner/dvr/-$$Lambda$DvrRecorder$52umHtUOwClDPwLK_2S_qZCPG6k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/media/tv/tuner/dvr/DvrRecorder;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/media/tv/tuner/dvr/DvrRecorder;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/tv/tuner/dvr/-$$Lambda$DvrRecorder$52umHtUOwClDPwLK_2S_qZCPG6k;->f$0:Landroid/media/tv/tuner/dvr/DvrRecorder;

    iput p2, p0, Landroid/media/tv/tuner/dvr/-$$Lambda$DvrRecorder$52umHtUOwClDPwLK_2S_qZCPG6k;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/media/tv/tuner/dvr/-$$Lambda$DvrRecorder$52umHtUOwClDPwLK_2S_qZCPG6k;->f$0:Landroid/media/tv/tuner/dvr/DvrRecorder;

    iget v1, p0, Landroid/media/tv/tuner/dvr/-$$Lambda$DvrRecorder$52umHtUOwClDPwLK_2S_qZCPG6k;->f$1:I

    invoke-virtual {v0, v1}, Landroid/media/tv/tuner/dvr/DvrRecorder;->lambda$onRecordStatusChanged$0$DvrRecorder(I)V

    return-void
.end method
