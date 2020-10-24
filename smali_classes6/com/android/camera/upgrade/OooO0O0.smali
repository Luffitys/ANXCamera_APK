.class public final synthetic Lcom/android/camera/upgrade/OooO0O0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic OooO00o:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/camera/upgrade/OooO0O0;->OooO00o:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/upgrade/OooO0O0;->OooO00o:J

    invoke-static {v0, v1}, Lcom/android/camera/upgrade/UpgradeManager;->OooO00o(J)V

    return-void
.end method
