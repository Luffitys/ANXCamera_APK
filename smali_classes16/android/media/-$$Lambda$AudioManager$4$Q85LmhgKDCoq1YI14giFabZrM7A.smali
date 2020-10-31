.class public final synthetic Landroid/media/-$$Lambda$AudioManager$4$Q85LmhgKDCoq1YI14giFabZrM7A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/media/AudioManager$AudioServerStateCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/media/AudioManager$AudioServerStateCallback;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/-$$Lambda$AudioManager$4$Q85LmhgKDCoq1YI14giFabZrM7A;->f$0:Landroid/media/AudioManager$AudioServerStateCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/media/-$$Lambda$AudioManager$4$Q85LmhgKDCoq1YI14giFabZrM7A;->f$0:Landroid/media/AudioManager$AudioServerStateCallback;

    invoke-static {v0}, Landroid/media/AudioManager$4;->lambda$dispatchAudioServerStateChange$0(Landroid/media/AudioManager$AudioServerStateCallback;)V

    return-void
.end method
