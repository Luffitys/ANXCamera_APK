.class public final synthetic Lcom/android/internal/app/-$$Lambda$ResolverActivityForCts$z0FtfGic-7RpH8gMf0YF-OZYUzU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$OnSwitchOnWorkSelectedListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/TabHost;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TabHost;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/-$$Lambda$ResolverActivityForCts$z0FtfGic-7RpH8gMf0YF-OZYUzU;->f$0:Landroid/widget/TabHost;

    return-void
.end method


# virtual methods
.method public final onSwitchOnWorkSelected()V
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/-$$Lambda$ResolverActivityForCts$z0FtfGic-7RpH8gMf0YF-OZYUzU;->f$0:Landroid/widget/TabHost;

    invoke-static {v0}, Lcom/android/internal/app/ResolverActivityForCts;->lambda$setupProfileTabs$1(Landroid/widget/TabHost;)V

    return-void
.end method
