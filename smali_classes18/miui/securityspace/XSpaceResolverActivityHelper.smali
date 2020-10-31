.class public Lmiui/securityspace/XSpaceResolverActivityHelper;
.super Ljava/lang/Object;
.source "XSpaceResolverActivityHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;
    }
.end annotation


# static fields
.field private static final PACKAGE_GOOGLE_VOICEASSIST:Ljava/lang/String; = "com.google.android.googlequicksearchbox"

.field private static final PACKAGE_VOICEASSIST:Ljava/lang/String; = "com.miui.voiceassist"

.field private static final TAG:Ljava/lang/String; = "XSpaceResolverActivity"

.field private static final XSPACE_SERVICE_COMPONENT:Ljava/lang/String; = "com.miui.securitycore/com.miui.xspace.service.XSpaceService"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAndResolve(Landroid/app/Activity;Landroid/content/Intent;Lcom/android/internal/app/AlertController$AlertParams;)Z
    .registers 5

    if-eqz p1, :cond_19

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "miui.intent.action.ACTION_XSPACE_RESOLVER_ACTIVITY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_19

    :cond_f
    new-instance v0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;

    invoke-direct {v0, p0, p1, p2}, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;-><init>(Landroid/app/Activity;Landroid/content/Intent;Lcom/android/internal/app/AlertController$AlertParams;)V

    invoke-virtual {v0}, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->run()V

    const/4 v0, 0x1

    return v0

    :cond_19
    :goto_19
    const/4 v0, 0x0

    return v0
.end method
