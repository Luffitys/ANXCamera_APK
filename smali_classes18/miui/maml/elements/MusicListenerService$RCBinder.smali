.class public Lmiui/maml/elements/MusicListenerService$RCBinder;
.super Landroid/os/Binder;
.source "MusicListenerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/MusicListenerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RCBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/elements/MusicListenerService;


# direct methods
.method public constructor <init>(Lmiui/maml/elements/MusicListenerService;)V
    .registers 2

    iput-object p1, p0, Lmiui/maml/elements/MusicListenerService$RCBinder;->this$0:Lmiui/maml/elements/MusicListenerService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lmiui/maml/elements/MusicListenerService;
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/MusicListenerService$RCBinder;->this$0:Lmiui/maml/elements/MusicListenerService;

    return-object v0
.end method
