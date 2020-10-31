.class public final synthetic Landroid/hardware/radio/-$$Lambda$ProgramSelector$TWK8H6GGx8Rt5rbA87tKag-pCqw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/radio/-$$Lambda$ProgramSelector$TWK8H6GGx8Rt5rbA87tKag-pCqw;->f$0:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget v0, p0, Landroid/hardware/radio/-$$Lambda$ProgramSelector$TWK8H6GGx8Rt5rbA87tKag-pCqw;->f$0:I

    check-cast p1, Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-static {v0, p1}, Landroid/hardware/radio/ProgramSelector;->lambda$withSecondaryPreferred$1(ILandroid/hardware/radio/ProgramSelector$Identifier;)Z

    move-result p1

    return p1
.end method
