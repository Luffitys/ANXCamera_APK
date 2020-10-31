.class Lmiui/animation/listener/ListenerNotifier$PendingNotify;
.super Ljava/lang/Object;
.source "ListenerNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/animation/listener/ListenerNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PendingNotify"
.end annotation


# instance fields
.field tag:Ljava/lang/Object;

.field what:I


# direct methods
.method constructor <init>(Ljava/lang/Object;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lmiui/animation/listener/ListenerNotifier$PendingNotify;->what:I

    iput-object p1, p0, Lmiui/animation/listener/ListenerNotifier$PendingNotify;->tag:Ljava/lang/Object;

    iput p2, p0, Lmiui/animation/listener/ListenerNotifier$PendingNotify;->what:I

    return-void
.end method


# virtual methods
.method isSame(Ljava/lang/Object;I)Z
    .registers 5

    iget-object v0, p0, Lmiui/animation/listener/ListenerNotifier$PendingNotify;->tag:Ljava/lang/Object;

    if-eqz v0, :cond_10

    iget v1, p0, Lmiui/animation/listener/ListenerNotifier$PendingNotify;->what:I

    if-ne v1, p2, :cond_10

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method
