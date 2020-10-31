.class public final Lcom/miui/internal/R$xml;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "xml"
.end annotation


# static fields
.field public static default_auto_install:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/high16 v0, 0x10130000

    sput v0, Lcom/miui/internal/R$xml;->default_auto_install:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
