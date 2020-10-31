.class public Lcom/miui/enterprise/settings/EnterpriseSettings$Application;
.super Ljava/lang/Object;
.source "EnterpriseSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/enterprise/settings/EnterpriseSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Application"
.end annotation


# static fields
.field public static final APPLICATION_BLACK_LIST:Ljava/lang/String; = "ep_app_black_list"

.field public static final APPLICATION_BLACK_XSAPCE:Ljava/lang/String; = "ep_app_black_xsapce"

.field public static final APPLICATION_DISALLOW_RUNNING_LIST:Ljava/lang/String; = "ep_app_disallow_running_list"

.field public static final APPLICATION_RESTRICTION_MODE:Ljava/lang/String; = "ep_app_restriction_mode"

.field public static final APPLICATION_WHITE_LIST:Ljava/lang/String; = "ep_app_white_list"

.field public static final TRUSTED_APP_STORES:Ljava/lang/String; = "ep_trusted_app_stores"

.field public static final TRUSTED_APP_STORE_ENABLED:Ljava/lang/String; = "ep_trusted_app_store_enabled"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
