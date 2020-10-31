.class public final synthetic Landroid/provider/-$$Lambda$FontsContract$p_tsXYYYpEH0-EJSp2uPrJ33dkU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/provider/FontsContract$FontRequestCallback;

.field public final synthetic f$1:Landroid/graphics/Typeface;


# direct methods
.method public synthetic constructor <init>(Landroid/provider/FontsContract$FontRequestCallback;Landroid/graphics/Typeface;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/provider/-$$Lambda$FontsContract$p_tsXYYYpEH0-EJSp2uPrJ33dkU;->f$0:Landroid/provider/FontsContract$FontRequestCallback;

    iput-object p2, p0, Landroid/provider/-$$Lambda$FontsContract$p_tsXYYYpEH0-EJSp2uPrJ33dkU;->f$1:Landroid/graphics/Typeface;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/provider/-$$Lambda$FontsContract$p_tsXYYYpEH0-EJSp2uPrJ33dkU;->f$0:Landroid/provider/FontsContract$FontRequestCallback;

    iget-object v1, p0, Landroid/provider/-$$Lambda$FontsContract$p_tsXYYYpEH0-EJSp2uPrJ33dkU;->f$1:Landroid/graphics/Typeface;

    invoke-static {v0, v1}, Landroid/provider/FontsContract;->lambda$requestFonts$1(Landroid/provider/FontsContract$FontRequestCallback;Landroid/graphics/Typeface;)V

    return-void
.end method
