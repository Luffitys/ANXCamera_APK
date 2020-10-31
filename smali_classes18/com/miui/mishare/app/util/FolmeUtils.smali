.class public Lcom/miui/mishare/app/util/FolmeUtils;
.super Ljava/lang/Object;
.source "FolmeUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FolmeUtils"

.field private static support:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/miui/mishare/app/util/FolmeUtils;->support:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handleTouchOf(Landroid/content/Context;Landroid/view/View;)V
    .registers 6

    if-eqz p1, :cond_26

    invoke-static {p0}, Lcom/miui/mishare/app/util/FolmeUtils;->isEnableFolme(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_26

    :cond_9
    const/4 v0, 0x1

    :try_start_a
    new-array v1, v0, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Lmiui/animation/Folme;->useAt([Landroid/view/View;)Lmiui/animation/IFolme;

    move-result-object v1

    invoke-interface {v1}, Lmiui/animation/IFolme;->touch()Lmiui/animation/ITouchStyle;

    move-result-object v3

    new-array v2, v2, [Lmiui/animation/base/AnimConfig;

    invoke-interface {v3, p1, v0, v2}, Lmiui/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;Z[Lmiui/animation/base/AnimConfig;)V
    :try_end_1c
    .catchall {:try_start_a .. :try_end_1c} :catchall_1d

    goto :goto_25

    :catchall_1d
    move-exception v0

    const-string v1, "FolmeUtils"

    const-string v2, "not support folme"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_25
    return-void

    :cond_26
    :goto_26
    return-void
.end method

.method private static isEnableFolme(Landroid/content/Context;)Z
    .registers 3

    sget-object v0, Lcom/miui/mishare/app/util/FolmeUtils;->support:Ljava/lang/Boolean;

    if-nez v0, :cond_1b

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.miui.core"

    invoke-static {v0, v1}, Lmiui/util/AppConstants;->getSdkLevel(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x11

    if-lt v0, v1, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/miui/mishare/app/util/FolmeUtils;->support:Ljava/lang/Boolean;

    :cond_1b
    sget-object v0, Lcom/miui/mishare/app/util/FolmeUtils;->support:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
