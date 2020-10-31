.class public final synthetic Landroid/media/tv/tuner/-$$Lambda$Tuner$EventHandler$O98cW0HuxUDT27bFMy40ViHTsqc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/media/tv/tuner/Tuner$EventHandler;


# direct methods
.method public synthetic constructor <init>(Landroid/media/tv/tuner/Tuner$EventHandler;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/tv/tuner/-$$Lambda$Tuner$EventHandler$O98cW0HuxUDT27bFMy40ViHTsqc;->f$0:Landroid/media/tv/tuner/Tuner$EventHandler;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/media/tv/tuner/-$$Lambda$Tuner$EventHandler$O98cW0HuxUDT27bFMy40ViHTsqc;->f$0:Landroid/media/tv/tuner/Tuner$EventHandler;

    invoke-virtual {v0}, Landroid/media/tv/tuner/Tuner$EventHandler;->lambda$handleMessage$0$Tuner$EventHandler()V

    return-void
.end method
