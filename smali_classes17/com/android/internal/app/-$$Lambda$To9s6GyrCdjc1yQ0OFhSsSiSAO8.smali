.class public final synthetic Lcom/android/internal/app/-$$Lambda$To9s6GyrCdjc1yQ0OFhSsSiSAO8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/app/ResolverActivityForCts;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/app/ResolverActivityForCts;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/-$$Lambda$To9s6GyrCdjc1yQ0OFhSsSiSAO8;->f$0:Lcom/android/internal/app/ResolverActivityForCts;

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 4

    iget-object v0, p0, Lcom/android/internal/app/-$$Lambda$To9s6GyrCdjc1yQ0OFhSsSiSAO8;->f$0:Lcom/android/internal/app/ResolverActivityForCts;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/ResolverActivityForCts;->onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method
