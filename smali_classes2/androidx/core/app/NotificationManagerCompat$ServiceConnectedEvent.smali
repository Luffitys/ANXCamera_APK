.class Landroidx/core/app/NotificationManagerCompat$ServiceConnectedEvent;
.super Ljava/lang/Object;
.source ""


# instance fields
.field final componentName:Landroid/content/ComponentName;

.field final iBinder:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/app/NotificationManagerCompat$ServiceConnectedEvent;->componentName:Landroid/content/ComponentName;

    iput-object p2, p0, Landroidx/core/app/NotificationManagerCompat$ServiceConnectedEvent;->iBinder:Landroid/os/IBinder;

    return-void
.end method
