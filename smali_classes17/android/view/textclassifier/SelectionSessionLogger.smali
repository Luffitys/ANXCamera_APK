.class public final Landroid/view/textclassifier/SelectionSessionLogger;
.super Ljava/lang/Object;
.source "SelectionSessionLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textclassifier/SelectionSessionLogger$SignatureParser;
    }
.end annotation


# static fields
.field private static final CLASSIFIER_ID:Ljava/lang/String; = "androidtc"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isPlatformLocalTextClassifierSmartSelection(Ljava/lang/String;)Z
    .registers 3

    nop

    invoke-static {p0}, Landroid/view/textclassifier/SelectionSessionLogger$SignatureParser;->getClassifierId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "androidtc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
