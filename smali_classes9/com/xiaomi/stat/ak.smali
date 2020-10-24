.class public Lcom/xiaomi/stat/ak;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/xiaomi/stat/ak;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/xiaomi/stat/ak;->a:Landroid/content/Context;

    sput-object p1, Lcom/xiaomi/stat/ak;->b:Ljava/lang/String;

    sput-object p2, Lcom/xiaomi/stat/ak;->c:Ljava/lang/String;

    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xiaomi/stat/ak;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xiaomi/stat/ak;->c:Ljava/lang/String;

    return-object v0
.end method
