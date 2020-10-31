.class public final synthetic Landroid/app/-$$Lambda$ActivityThread$1aRbI-i_3uur4gKmyI8A0r9vN6o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/-$$Lambda$ActivityThread$1aRbI-i_3uur4gKmyI8A0r9vN6o;->f$0:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Landroid/app/-$$Lambda$ActivityThread$1aRbI-i_3uur4gKmyI8A0r9vN6o;->f$0:Landroid/os/IBinder;

    check-cast p1, Landroid/util/Pair;

    invoke-static {v0, p1}, Landroid/app/ActivityThread;->lambda$handleFixedRotationAdjustments$1(Landroid/os/IBinder;Landroid/util/Pair;)Z

    move-result p1

    return p1
.end method
