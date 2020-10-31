.class Landroid/os/perfdebug/ChoreographerMonitor$CallbackRecord;
.super Ljava/lang/Object;
.source "ChoreographerMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/perfdebug/ChoreographerMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallbackRecord"
.end annotation


# instance fields
.field action:Ljava/lang/String;

.field callbackType:I

.field latencyMillis:J


# direct methods
.method constructor <init>(ILjava/lang/String;J)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/os/perfdebug/ChoreographerMonitor$CallbackRecord;->callbackType:I

    iput-object p2, p0, Landroid/os/perfdebug/ChoreographerMonitor$CallbackRecord;->action:Ljava/lang/String;

    iput-wide p3, p0, Landroid/os/perfdebug/ChoreographerMonitor$CallbackRecord;->latencyMillis:J

    return-void
.end method
