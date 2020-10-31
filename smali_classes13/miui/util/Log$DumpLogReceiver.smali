.class public Lmiui/util/Log$DumpLogReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DumpLogReceiver"
.end annotation


# instance fields
.field private mReceiver:Lcom/miui/internal/log/receiver/DumpReceiver;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Lcom/miui/internal/log/receiver/DumpReceiver;

    invoke-direct {v0}, Lcom/miui/internal/log/receiver/DumpReceiver;-><init>()V

    iput-object v0, p0, Lmiui/util/Log$DumpLogReceiver;->mReceiver:Lcom/miui/internal/log/receiver/DumpReceiver;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    iget-object v0, p0, Lmiui/util/Log$DumpLogReceiver;->mReceiver:Lcom/miui/internal/log/receiver/DumpReceiver;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/log/receiver/DumpReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
