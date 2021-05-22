# Custom collection View Cell with Swift UiKit

Create file of type `UICollectionViewCell` then you can set some configurations in this, I added one identifier called = `CustomCollectionViewCell`.
this way you can add identifier to be called in the `ViewController` or another controller.
`static let identifier = "CustomCollectionViewCell"`

also I added image and label to this Collection view.

```
private  let  myImageView: UIImageView = {
	let imageView = UIImageView()
	imageView.image = UIImage(systemName: "house")
	imageView.clipsToBounds = true
	return imageView
}()

private let myLabel: UILabel = {
	let label = UILabel()
	label.text = "Custom"
	label.textAlignment = .center
	return label
}()
```

in `Init` you can called the component created in this case `UIImageView` and `UILabel`, also you can set `contentView`

```
override init(frame: CGRect) {
	super.init(frame: frame)
	contentView.backgroundColor = .lightGray
	contentView.addSubview(myLabel)
	contentView.addSubview(myImageView)
	contentView.clipsToBounds = true
}
```

function method `layoutSubViews`

```
The default implementation of this method does nothing on iOS 5.1 and earlier. Otherwise, the default implementation uses any constraints you have set to determine the size and position of any subviews.
```

you can check more details in this link https://developer.apple.com/documentation/uikit/uiview/1622482-layoutsubviews

```
override  func  layoutSubviews() {
	super.layoutSubviews()
	myLabel.frame = CGRect(x: 5,
						   y: contentView.frame.size.height-50,
						   width: contentView.frame.size.width-10,
						   height: 50)

	myImageView.frame = CGRect(x: 5,
							   y: 0,
							   width: contentView.frame.size.width-10,
							   height: contentView.frame.size.height-50)
}
```

this function allow you set text of `Label` and `image` of ImageView

```
public func configure(label: String, imageName: String){
	myLabel.text = label
	myImageView.image = UIImage(named: imageName)
}
```

```
override  func  prepareForReuse() {
	myLabel.text = nil
	myImageView.image = nil
}
```
