.class public abstract Lcom/xiaomi/camera/liveshot/writer/SampleWriter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    invoke-virtual {p0}, Lcom/xiaomi/camera/liveshot/writer/SampleWriter;->writeSample()V

    return-void
.end method

.method protected abstract writeSample()V
.end method
