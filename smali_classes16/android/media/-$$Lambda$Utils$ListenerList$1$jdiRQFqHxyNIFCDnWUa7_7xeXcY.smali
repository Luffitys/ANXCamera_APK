.class public final synthetic Landroid/media/-$$Lambda$Utils$ListenerList$1$jdiRQFqHxyNIFCDnWUa7_7xeXcY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/media/Utils$ListenerList$1;

.field public final synthetic f$1:Landroid/media/Utils$ListenerList$Listener;

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/media/Utils$ListenerList$1;Landroid/media/Utils$ListenerList$Listener;ILjava/lang/Object;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/-$$Lambda$Utils$ListenerList$1$jdiRQFqHxyNIFCDnWUa7_7xeXcY;->f$0:Landroid/media/Utils$ListenerList$1;

    iput-object p2, p0, Landroid/media/-$$Lambda$Utils$ListenerList$1$jdiRQFqHxyNIFCDnWUa7_7xeXcY;->f$1:Landroid/media/Utils$ListenerList$Listener;

    iput p3, p0, Landroid/media/-$$Lambda$Utils$ListenerList$1$jdiRQFqHxyNIFCDnWUa7_7xeXcY;->f$2:I

    iput-object p4, p0, Landroid/media/-$$Lambda$Utils$ListenerList$1$jdiRQFqHxyNIFCDnWUa7_7xeXcY;->f$3:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Landroid/media/-$$Lambda$Utils$ListenerList$1$jdiRQFqHxyNIFCDnWUa7_7xeXcY;->f$0:Landroid/media/Utils$ListenerList$1;

    iget-object v1, p0, Landroid/media/-$$Lambda$Utils$ListenerList$1$jdiRQFqHxyNIFCDnWUa7_7xeXcY;->f$1:Landroid/media/Utils$ListenerList$Listener;

    iget v2, p0, Landroid/media/-$$Lambda$Utils$ListenerList$1$jdiRQFqHxyNIFCDnWUa7_7xeXcY;->f$2:I

    iget-object v3, p0, Landroid/media/-$$Lambda$Utils$ListenerList$1$jdiRQFqHxyNIFCDnWUa7_7xeXcY;->f$3:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/Utils$ListenerList$1;->lambda$onEvent$0$Utils$ListenerList$1(Landroid/media/Utils$ListenerList$Listener;ILjava/lang/Object;)V

    return-void
.end method
