.class public final synthetic Landroid/content/pm/parsing/result/-$$Lambda$ParseTypeImpl$w0XQhKhTM2QZoYasGubxOSuJkI4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/pm/parsing/result/ParseInput$Callback;


# static fields
.field public static final synthetic INSTANCE:Landroid/content/pm/parsing/result/-$$Lambda$ParseTypeImpl$w0XQhKhTM2QZoYasGubxOSuJkI4;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/content/pm/parsing/result/-$$Lambda$ParseTypeImpl$w0XQhKhTM2QZoYasGubxOSuJkI4;

    invoke-direct {v0}, Landroid/content/pm/parsing/result/-$$Lambda$ParseTypeImpl$w0XQhKhTM2QZoYasGubxOSuJkI4;-><init>()V

    sput-object v0, Landroid/content/pm/parsing/result/-$$Lambda$ParseTypeImpl$w0XQhKhTM2QZoYasGubxOSuJkI4;->INSTANCE:Landroid/content/pm/parsing/result/-$$Lambda$ParseTypeImpl$w0XQhKhTM2QZoYasGubxOSuJkI4;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isChangeEnabled(JLjava/lang/String;I)Z
    .registers 5

    invoke-static {p1, p2, p3, p4}, Landroid/content/pm/parsing/result/ParseTypeImpl;->lambda$forParsingWithoutPlatformCompat$0(JLjava/lang/String;I)Z

    move-result p1

    return p1
.end method
