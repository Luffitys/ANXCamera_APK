.class public final synthetic Landroid/app/admin/-$$Lambda$DevicePolicyManager$1$k6Rmp3Fg9FFATYRU5Z7rHDXGemA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/admin/DevicePolicyManager$OnClearApplicationUserDataListener;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Landroid/app/admin/DevicePolicyManager$OnClearApplicationUserDataListener;Ljava/lang/String;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/admin/-$$Lambda$DevicePolicyManager$1$k6Rmp3Fg9FFATYRU5Z7rHDXGemA;->f$0:Landroid/app/admin/DevicePolicyManager$OnClearApplicationUserDataListener;

    iput-object p2, p0, Landroid/app/admin/-$$Lambda$DevicePolicyManager$1$k6Rmp3Fg9FFATYRU5Z7rHDXGemA;->f$1:Ljava/lang/String;

    iput-boolean p3, p0, Landroid/app/admin/-$$Lambda$DevicePolicyManager$1$k6Rmp3Fg9FFATYRU5Z7rHDXGemA;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroid/app/admin/-$$Lambda$DevicePolicyManager$1$k6Rmp3Fg9FFATYRU5Z7rHDXGemA;->f$0:Landroid/app/admin/DevicePolicyManager$OnClearApplicationUserDataListener;

    iget-object v1, p0, Landroid/app/admin/-$$Lambda$DevicePolicyManager$1$k6Rmp3Fg9FFATYRU5Z7rHDXGemA;->f$1:Ljava/lang/String;

    iget-boolean v2, p0, Landroid/app/admin/-$$Lambda$DevicePolicyManager$1$k6Rmp3Fg9FFATYRU5Z7rHDXGemA;->f$2:Z

    invoke-static {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager$1;->lambda$onRemoveCompleted$0(Landroid/app/admin/DevicePolicyManager$OnClearApplicationUserDataListener;Ljava/lang/String;Z)V

    return-void
.end method
