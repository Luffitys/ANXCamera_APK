.class public final synthetic Lcom/android/internal/app/-$$Lambda$ChooserActivityForCts$aLnN8kygMu5sNlv2fde4payfJV0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/app/ChooserActivityForCts;

.field public final synthetic f$1:Lcom/android/internal/app/chooser/TargetInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/app/ChooserActivityForCts;Lcom/android/internal/app/chooser/TargetInfo;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/-$$Lambda$ChooserActivityForCts$aLnN8kygMu5sNlv2fde4payfJV0;->f$0:Lcom/android/internal/app/ChooserActivityForCts;

    iput-object p2, p0, Lcom/android/internal/app/-$$Lambda$ChooserActivityForCts$aLnN8kygMu5sNlv2fde4payfJV0;->f$1:Lcom/android/internal/app/chooser/TargetInfo;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/android/internal/app/-$$Lambda$ChooserActivityForCts$aLnN8kygMu5sNlv2fde4payfJV0;->f$0:Lcom/android/internal/app/ChooserActivityForCts;

    iget-object v1, p0, Lcom/android/internal/app/-$$Lambda$ChooserActivityForCts$aLnN8kygMu5sNlv2fde4payfJV0;->f$1:Lcom/android/internal/app/chooser/TargetInfo;

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/app/ChooserActivityForCts;->lambda$createNearbyButton$1$ChooserActivityForCts(Lcom/android/internal/app/chooser/TargetInfo;Landroid/view/View;)V

    return-void
.end method
