.class Lcom/android/internal/app/ResolverActivityForCts$2;
.super Ljava/lang/Object;
.source "ResolverActivityForCts.java"

# interfaces
.implements Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ResolverActivityForCts;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ResolverActivityForCts;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ResolverActivityForCts;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivityForCts$2;->this$0:Lcom/android/internal/app/ResolverActivityForCts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissed()V
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityForCts$2;->this$0:Lcom/android/internal/app/ResolverActivityForCts;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivityForCts;->finish()V

    return-void
.end method
