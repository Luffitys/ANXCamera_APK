.class Landroid/content/res/GradientColor$GradientColorFactory;
.super Landroid/content/res/ConstantState;
.source "GradientColor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/GradientColor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GradientColorFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/res/ConstantState<",
        "Landroid/content/res/ComplexColor;",
        ">;"
    }
.end annotation


# instance fields
.field private final mSrc:Landroid/content/res/GradientColor;


# direct methods
.method public constructor <init>(Landroid/content/res/GradientColor;)V
    .registers 2

    invoke-direct {p0}, Landroid/content/res/ConstantState;-><init>()V

    iput-object p1, p0, Landroid/content/res/GradientColor$GradientColorFactory;->mSrc:Landroid/content/res/GradientColor;

    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .registers 2

    iget-object v0, p0, Landroid/content/res/GradientColor$GradientColorFactory;->mSrc:Landroid/content/res/GradientColor;

    # getter for: Landroid/content/res/GradientColor;->mChangingConfigurations:I
    invoke-static {v0}, Landroid/content/res/GradientColor;->access$000(Landroid/content/res/GradientColor;)I

    move-result v0

    return v0
.end method

.method public newInstance()Landroid/content/res/GradientColor;
    .registers 2

    iget-object v0, p0, Landroid/content/res/GradientColor$GradientColorFactory;->mSrc:Landroid/content/res/GradientColor;

    return-object v0
.end method

.method public newInstance(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/content/res/GradientColor;
    .registers 4

    iget-object v0, p0, Landroid/content/res/GradientColor$GradientColorFactory;->mSrc:Landroid/content/res/GradientColor;

    invoke-virtual {v0, p2}, Landroid/content/res/GradientColor;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/GradientColor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Landroid/content/res/GradientColor$GradientColorFactory;->newInstance()Landroid/content/res/GradientColor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newInstance(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1, p2}, Landroid/content/res/GradientColor$GradientColorFactory;->newInstance(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/content/res/GradientColor;

    move-result-object p1

    return-object p1
.end method
