.class Lcom/miui/internal/app/ActionBarImpl$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 1

    move-object p0, p1

    check-cast p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    invoke-static {p0}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->access$000(Lcom/miui/internal/app/ActionBarImpl$TabImpl;)Landroid/app/ActionBar$TabListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->access$000(Lcom/miui/internal/app/ActionBarImpl$TabImpl;)Landroid/app/ActionBar$TabListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/ActionBar$TabListener;->onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    :cond_0
    invoke-static {p0}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->access$100(Lcom/miui/internal/app/ActionBarImpl$TabImpl;)Landroid/app/ActionBar$TabListener;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->access$100(Lcom/miui/internal/app/ActionBarImpl$TabImpl;)Landroid/app/ActionBar$TabListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/app/ActionBar$TabListener;->onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    :cond_1
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 1

    move-object p0, p1

    check-cast p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    invoke-static {p0}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->access$000(Lcom/miui/internal/app/ActionBarImpl$TabImpl;)Landroid/app/ActionBar$TabListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->access$000(Lcom/miui/internal/app/ActionBarImpl$TabImpl;)Landroid/app/ActionBar$TabListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/ActionBar$TabListener;->onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    :cond_0
    invoke-static {p0}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->access$100(Lcom/miui/internal/app/ActionBarImpl$TabImpl;)Landroid/app/ActionBar$TabListener;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->access$100(Lcom/miui/internal/app/ActionBarImpl$TabImpl;)Landroid/app/ActionBar$TabListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/app/ActionBar$TabListener;->onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    :cond_1
    return-void
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 1

    move-object p0, p1

    check-cast p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    invoke-static {p0}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->access$000(Lcom/miui/internal/app/ActionBarImpl$TabImpl;)Landroid/app/ActionBar$TabListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->access$000(Lcom/miui/internal/app/ActionBarImpl$TabImpl;)Landroid/app/ActionBar$TabListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/ActionBar$TabListener;->onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    :cond_0
    invoke-static {p0}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->access$100(Lcom/miui/internal/app/ActionBarImpl$TabImpl;)Landroid/app/ActionBar$TabListener;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->access$100(Lcom/miui/internal/app/ActionBarImpl$TabImpl;)Landroid/app/ActionBar$TabListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/app/ActionBar$TabListener;->onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    :cond_1
    return-void
.end method
