.class public Lmiui/util/Log$DumpLogReceiver;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field private mReceiver:Lcom/miui/internal/log/receiver/DumpReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Lcom/miui/internal/log/receiver/DumpReceiver;

    invoke-direct {v0}, Lcom/miui/internal/log/receiver/DumpReceiver;-><init>()V

    iput-object v0, p0, Lmiui/util/Log$DumpLogReceiver;->mReceiver:Lcom/miui/internal/log/receiver/DumpReceiver;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p0, p0, Lmiui/util/Log$DumpLogReceiver;->mReceiver:Lcom/miui/internal/log/receiver/DumpReceiver;

    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/log/receiver/DumpReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
