.class public abstract Lcom/miui/internal/variable/Android_View_Window_class;
.super Ljava/lang/Object;
.source "Android_View_Window_class.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/variable/Android_View_Window_class$Factory;
    }
.end annotation


# static fields
.field protected static setExtraFlags:Lmiui/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    :try_start_0
    const-class v0, Landroid/view/Window;

    const-string v1, "setExtraFlags"

    const-string v2, "(II)V"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/Android_View_Window_class;->setExtraFlags:Lmiui/reflect/Method;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_11

    :catch_d
    move-exception v0

    const/4 v1, 0x0

    sput-object v1, Lcom/miui/internal/variable/Android_View_Window_class;->setExtraFlags:Lmiui/reflect/Method;

    :goto_11
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract setTranslucentStatus(Landroid/view/Window;I)Z
.end method
