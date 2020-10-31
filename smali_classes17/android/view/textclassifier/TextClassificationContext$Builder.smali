.class public final Landroid/view/textclassifier/TextClassificationContext$Builder;
.super Ljava/lang/Object;
.source "TextClassificationContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextClassificationContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mPackageName:Ljava/lang/String;

.field private final mWidgetType:Ljava/lang/String;

.field private mWidgetVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/view/textclassifier/TextClassificationContext$Builder;->mPackageName:Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/view/textclassifier/TextClassificationContext$Builder;->mWidgetType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Landroid/view/textclassifier/TextClassificationContext;
    .registers 6

    new-instance v0, Landroid/view/textclassifier/TextClassificationContext;

    iget-object v1, p0, Landroid/view/textclassifier/TextClassificationContext$Builder;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/view/textclassifier/TextClassificationContext$Builder;->mWidgetType:Ljava/lang/String;

    iget-object v3, p0, Landroid/view/textclassifier/TextClassificationContext$Builder;->mWidgetVersion:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/textclassifier/TextClassificationContext;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/textclassifier/TextClassificationContext$1;)V

    return-object v0
.end method

.method public setWidgetVersion(Ljava/lang/String;)Landroid/view/textclassifier/TextClassificationContext$Builder;
    .registers 2

    iput-object p1, p0, Landroid/view/textclassifier/TextClassificationContext$Builder;->mWidgetVersion:Ljava/lang/String;

    return-object p0
.end method
