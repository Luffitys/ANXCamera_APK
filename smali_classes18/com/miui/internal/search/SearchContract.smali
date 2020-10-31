.class public Lcom/miui/internal/search/SearchContract;
.super Ljava/lang/Object;
.source "SearchContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/search/SearchContract$SearchResultColumn;
    }
.end annotation


# static fields
.field public static final COLUMN_RAW_EXTRAS:I = 0x9

.field public static final COLUMN_RAW_ICON_RESID:I = 0x4

.field public static final COLUMN_RAW_INTENT_ACTION:I = 0x5

.field public static final COLUMN_RAW_INTENT_TARGET_CLASS:I = 0x7

.field public static final COLUMN_RAW_INTENT_TARGET_PACKAGE:I = 0x6

.field public static final COLUMN_RAW_KEYWORDS:I = 0x3

.field public static final COLUMN_RAW_OTHER:I = 0xa

.field public static final COLUMN_RAW_SUMMARY_OFF:I = 0x2

.field public static final COLUMN_RAW_SUMMARY_ON:I = 0x1

.field public static final COLUMN_RAW_TITLE:I = 0x0

.field public static final COLUMN_RAW_URI_STRING:I = 0x8

.field public static final SEARCH_RESULT_COLUMNS:[Ljava/lang/String;

.field public static final SETTINGS_SEARCH_PROVIDER_INTERFACE:Ljava/lang/String; = "miui.intent.action.SETTINGS_SEARCH_PROVIDER"


# direct methods
.method static constructor <clinit>()V
    .registers 11

    const-string v0, "title"

    const-string v1, "summaryOn"

    const-string v2, "summaryOff"

    const-string v3, "keywords"

    const-string v4, "iconResId"

    const-string v5, "intentAction"

    const-string v6, "intentTargetPackage"

    const-string v7, "intentTargetClass"

    const-string v8, "uriString"

    const-string v9, "extras"

    const-string v10, "other"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/search/SearchContract;->SEARCH_RESULT_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
