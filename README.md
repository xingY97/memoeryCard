# memoeryCard
week 3

Created Card object from the card class
    - used  to create card objects
    - each card objects is going to represent a card
    - store infomation 
            a.image for the card
            b.the status of that card
                1.flipped or not
                2.matched or not 
            
Created CardModel class
    responsible for creating a randomize list of card object and passing back
View controller


Week 4

Created UicollectionView delegate to display cards
```   
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width  = (view.frame.width-200)/4
        let height = (view.frame.height)/2
        return CGSize(width: width, height: height)
    }

    //how many items to display returning an Int
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        //return number of cards
        return cardsArray.count
    }
    //returning whole collectionViewCell object
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //get a cell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CardCell", for: indexPath) as! CardCollectionViewCell
```
