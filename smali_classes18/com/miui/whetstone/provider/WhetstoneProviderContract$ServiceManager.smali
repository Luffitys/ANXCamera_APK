.class public final Lcom/miui/whetstone/provider/WhetstoneProviderContract$ServiceManager;
.super Ljava/lang/Object;
.source "WhetstoneProviderContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/whetstone/provider/WhetstoneProviderContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServiceManager"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final IS_ACTIVE:Ljava/lang/String; = "is_active"

.field public static final IS_PERSIST:Ljava/lang/String; = "is_persist"

.field public static final SERVICE_NAME:Ljava/lang/String; = "service_name"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "content://com.miui.whetstone/servicemanager"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/whetstone/provider/WhetstoneProviderContract$ServiceManager;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
