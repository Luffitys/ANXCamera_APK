.class public interface abstract Lcom/miui/internal/search/Function;
.super Ljava/lang/Object;
.source "Function.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/search/Function$Intent;
    }
.end annotation


# static fields
.field public static final CATEGORY:Ljava/lang/String; = "category"

.field public static final CATEGORY_ORIGIN:Ljava/lang/String; = "category_origin"

.field public static final CLASS:Ljava/lang/String; = "class"

.field public static final FEATURE:Ljava/lang/String; = "feature"

.field public static final FRAGMENT:Ljava/lang/String; = "fragment"

.field public static final FUNCTIONS:[Ljava/lang/String;

.field public static final ICON:Ljava/lang/String; = "icon"

.field public static final INTENT:Ljava/lang/String; = "intent"

.field public static final IS_CHECKBOX:Ljava/lang/String; = "is_checkbox"

.field public static final IS_OLDMAN:Ljava/lang/String; = "is_oldman"

.field public static final KEYWORDS:Ljava/lang/String; = "keywords"

.field public static final LEVEL:Ljava/lang/String; = "level"

.field public static final PACKAGE:Ljava/lang/String; = "package"

.field public static final PARENT:Ljava/lang/String; = "parent"

.field public static final PATH:Ljava/lang/String; = "path"

.field public static final RESOURCE:Ljava/lang/String; = "resource"

.field public static final SECOND_SPACE:Ljava/lang/String; = "second_space"

.field public static final SON:Ljava/lang/String; = "son"

.field public static final STATUS:Ljava/lang/String; = "status"

.field public static final SUMMARY:Ljava/lang/String; = "summary"

.field public static final TEMPORARY:Ljava/lang/String; = "temporary"

.field public static final TITLE:Ljava/lang/String; = "title"


# direct methods
.method static constructor <clinit>()V
    .registers 12

    const-string v0, "package"

    const-string v1, "resource"

    const-string v2, "title"

    const-string v3, "category"

    const-string v4, "path"

    const-string v5, "keywords"

    const-string v6, "summary"

    const-string v7, "icon"

    const-string v8, "is_checkbox"

    const-string v9, "intent"

    const-string v10, "status"

    const-string v11, "level"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/search/Function;->FUNCTIONS:[Ljava/lang/String;

    return-void
.end method
