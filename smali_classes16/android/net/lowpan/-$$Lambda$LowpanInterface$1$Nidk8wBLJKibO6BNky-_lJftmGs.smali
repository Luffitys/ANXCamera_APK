.class public final synthetic Landroid/net/lowpan/-$$Lambda$LowpanInterface$1$Nidk8wBLJKibO6BNky-_lJftmGs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/net/lowpan/LowpanInterface$Callback;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Landroid/net/lowpan/LowpanInterface$Callback;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/lowpan/-$$Lambda$LowpanInterface$1$Nidk8wBLJKibO6BNky-_lJftmGs;->f$0:Landroid/net/lowpan/LowpanInterface$Callback;

    iput-boolean p2, p0, Landroid/net/lowpan/-$$Lambda$LowpanInterface$1$Nidk8wBLJKibO6BNky-_lJftmGs;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/net/lowpan/-$$Lambda$LowpanInterface$1$Nidk8wBLJKibO6BNky-_lJftmGs;->f$0:Landroid/net/lowpan/LowpanInterface$Callback;

    iget-boolean v1, p0, Landroid/net/lowpan/-$$Lambda$LowpanInterface$1$Nidk8wBLJKibO6BNky-_lJftmGs;->f$1:Z

    invoke-static {v0, v1}, Landroid/net/lowpan/LowpanInterface$1;->lambda$onConnectedChanged$1(Landroid/net/lowpan/LowpanInterface$Callback;Z)V

    return-void
.end method
