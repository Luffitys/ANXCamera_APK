.class Lcom/miui/internal/app/ActionBarImpl$1;
.super Ljava/lang/Object;
.source "ActionBarImpl.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/app/ActionBarImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .registers 5

    move-object v0, p1

    check-cast v0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    # getter for: Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mInternalCallback:Landroid/app/ActionBar$TabListener;
    invoke-static {v0}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->access$000(Lcom/miui/internal/app/ActionBarImpl$TabImpl;)Landroid/app/ActionBar$TabListener;

    move-result-object v1

    if-eqz v1, :cond_10

    # getter for: Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mInternalCallback:Landroid/app/ActionBar$TabListener;
    invoke-static {v0}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->access$000(Lcom/miui/internal/app/ActionBarImpl$TabImpl;)Landroid/app/ActionBar$TabListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/app/ActionBar$TabListener;->onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    :cond_10
    # getter for: Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mCallback:Landroid/app/ActionBar$TabListener;
    invoke-static {v0}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->access$100(Lcom/miui/internal/app/ActionBarImpl$TabImpl;)Landroid/app/ActionBar$TabListener;

    move-result-object v1

    if-eqz v1, :cond_1d

    # getter for: Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mCallback:Landroid/app/ActionBar$TabListener;
    invoke-static {v0}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->access$100(Lcom/miui/internal/app/ActionBarImpl$TabImpl;)Landroid/app/ActionBar$TabListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/app/ActionBar$TabListener;->onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    :cond_1d
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .registers 5

    move-object v0, p1

    check-cast v0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    # getter for: Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mInternalCallback:Landroid/app/ActionBar$TabListener;
    invoke-static {v0}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->access$000(Lcom/miui/internal/app/ActionBarImpl$TabImpl;)Landroid/app/ActionBar$TabListener;

    move-result-object v1

    if-eqz v1, :cond_10

    # getter for: Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mInternalCallback:Landroid/app/ActionBar$TabListener;
    invoke-static {v0}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->access$000(Lcom/miui/internal/app/ActionBarImpl$TabImpl;)Landroid/app/ActionBar$TabListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/app/ActionBar$TabListener;->onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    :cond_10
    # getter for: Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mCallback:Landroid/app/ActionBar$TabListener;
    invoke-static {v0}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->access$100(Lcom/miui/internal/app/ActionBarImpl$TabImpl;)Landroid/app/ActionBar$TabListener;

    move-result-object v1

    if-eqz v1, :cond_1d

    # getter for: Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mCallback:Landroid/app/ActionBar$TabListener;
    invoke-static {v0}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->access$100(Lcom/miui/internal/app/ActionBarImpl$TabImpl;)Landroid/app/ActionBar$TabListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/app/ActionBar$TabListener;->onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    :cond_1d
    return-void
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .registers 5

    move-object v0, p1

    check-cast v0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    # getter for: Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mInternalCallback:Landroid/app/ActionBar$TabListener;
    invoke-static {v0}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->access$000(Lcom/miui/internal/app/ActionBarImpl$TabImpl;)Landroid/app/ActionBar$TabListener;

    move-result-object v1

    if-eqz v1, :cond_10

    # getter for: Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mInternalCallback:Landroid/app/ActionBar$TabListener;
    invoke-static {v0}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->access$000(Lcom/miui/internal/app/ActionBarImpl$TabImpl;)Landroid/app/ActionBar$TabListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/app/ActionBar$TabListener;->onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    :cond_10
    # getter for: Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mCallback:Landroid/app/ActionBar$TabListener;
    invoke-static {v0}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->access$100(Lcom/miui/internal/app/ActionBarImpl$TabImpl;)Landroid/app/ActionBar$TabListener;

    move-result-object v1

    if-eqz v1, :cond_1d

    # getter for: Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mCallback:Landroid/app/ActionBar$TabListener;
    invoke-static {v0}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->access$100(Lcom/miui/internal/app/ActionBarImpl$TabImpl;)Landroid/app/ActionBar$TabListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/app/ActionBar$TabListener;->onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    :cond_1d
    return-void
.end method
