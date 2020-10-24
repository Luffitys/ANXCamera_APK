.class Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;
.super Ljava/lang/Object;
.source ""


# instance fields
.field args:Landroid/os/Bundle;

.field clazz:Ljava/lang/Class;

.field fragment:Landroid/app/Fragment;

.field hasActionMenu:Z

.field tab:Landroid/app/ActionBar$Tab;

.field tag:Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/internal/app/DynamicFragmentPagerAdapter;


# direct methods
.method constructor <init>(Lcom/miui/internal/app/DynamicFragmentPagerAdapter;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;Landroid/app/ActionBar$Tab;Z)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->this$0:Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->tag:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->clazz:Ljava/lang/Class;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->fragment:Landroid/app/Fragment;

    iput-object p4, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->args:Landroid/os/Bundle;

    iput-object p5, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->tab:Landroid/app/ActionBar$Tab;

    iput-boolean p6, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->hasActionMenu:Z

    return-void
.end method
