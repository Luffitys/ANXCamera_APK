.class public final synthetic Lcom/android/internal/app/-$$Lambda$K19vTdFZB3Yv96PrOgBTPjKupdM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/app/ChooserActivityForCts;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/app/ChooserActivityForCts;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/-$$Lambda$K19vTdFZB3Yv96PrOgBTPjKupdM;->f$0:Lcom/android/internal/app/ChooserActivityForCts;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/-$$Lambda$K19vTdFZB3Yv96PrOgBTPjKupdM;->f$0:Lcom/android/internal/app/ChooserActivityForCts;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/ResolverActivityForCts;->onProfileClick(Landroid/view/View;)V

    return-void
.end method
