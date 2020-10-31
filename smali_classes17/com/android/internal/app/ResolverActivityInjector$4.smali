.class Lcom/android/internal/app/ResolverActivityInjector$4;
.super Ljava/lang/Object;
.source "ResolverActivityInjector.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ResolverActivityInjector;->configureContentView(Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ResolverActivityInjector;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ResolverActivityInjector;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivityInjector$4;->this$0:Lcom/android/internal/app/ResolverActivityInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityInjector$4;->this$0:Lcom/android/internal/app/ResolverActivityInjector;

    # getter for: Lcom/android/internal/app/ResolverActivityInjector;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;
    invoke-static {v0}, Lcom/android/internal/app/ResolverActivityInjector;->access$000(Lcom/android/internal/app/ResolverActivityInjector;)Lcom/android/internal/app/ResolverActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    return-void
.end method
